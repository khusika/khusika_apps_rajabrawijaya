package com.pit.rajabrawijaya;

import android.Manifest;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.support.v4.app.ActivityCompat;
import android.support.v4.content.ContextCompat;
import android.support.v7.app.AlertDialog;
import android.view.KeyEvent;
import android.view.View;

import com.google.zxing.ResultPoint;
import com.google.zxing.client.android.BeepManager;
import com.journeyapps.barcodescanner.BarcodeCallback;
import com.journeyapps.barcodescanner.BarcodeResult;
import com.journeyapps.barcodescanner.DecoratedBarcodeView;

import java.util.List;

public class ScanActivity extends BaseActivity {

    private static final String TAG = ScanActivity.class.getSimpleName();
    private static final int REQUEST_RUNTIME_PERMISSION = 321;
    private DecoratedBarcodeView barcodeView;
    private BeepManager beepManager;
    private String lastText;

    private BarcodeCallback callback = new BarcodeCallback() {
        @Override
        public void barcodeResult(BarcodeResult result) {
            if(result.getText() == null || result.getText().equals(lastText)) {
                return;
            }

            lastText = result.getText();
            barcodeView.setStatusText(result.getText());
            beepManager.playBeepSoundAndVibrate();
        }

        @Override
        public void possibleResultPoints(List<ResultPoint> resultPoints) {
        }
    };

    public boolean CheckPermission(Context context, String Permission) {
        if (ContextCompat.checkSelfPermission(context, Permission) == PackageManager.PERMISSION_GRANTED) {
            return true;
        } else {
            return false;
        }
    }

    public void RequestPermission(Activity thisActivity, String Permission, int Code) {
        if (ContextCompat.checkSelfPermission(thisActivity, Permission) != PackageManager.PERMISSION_GRANTED) {
            if (ActivityCompat.shouldShowRequestPermissionRationale(thisActivity, Permission)) {
            } else {
                ActivityCompat.requestPermissions(thisActivity, new String[]{Permission}, Code);
            }
        }
    }

    @Override
    public void onRequestPermissionsResult(int permsRequestCode, String[] permissions, int[] grantResults) {

        switch (permsRequestCode) {

            case REQUEST_RUNTIME_PERMISSION: {
                if (grantResults.length > 0 && grantResults[0] == PackageManager.PERMISSION_GRANTED) {
                    // you have permission go ahead
                    //authUser();
                } else {
                    AlertDialog alertDialog = new AlertDialog.Builder(ScanActivity.this).create();
                    alertDialog.setTitle("Error");
                    alertDialog.setMessage("Kamu harus mengizinkan aplikasi ini!");
                    alertDialog.setButton(AlertDialog.BUTTON_NEUTRAL, "Oke",
                            new DialogInterface.OnClickListener() {
                                public void onClick(DialogInterface dialog, int which) {
                                    finish();
                                    //System.exit(0);
                                }
                            });
                    alertDialog.show();
                }
                return;
            }
        }
    }

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);

        barcodeView = (DecoratedBarcodeView) findViewById(R.id.barcode_scanner);
        barcodeView.decodeContinuous(callback);
        barcodeView.setStatusText("Arahkan QR Code ke garis merah untuk mulai scan.");

        beepManager = new BeepManager(this);
        if (CheckPermission(ScanActivity.this, Manifest.permission.CAMERA)) {

        } else {
            // you do not have permission go request runtime permissions
            RequestPermission(ScanActivity.this, Manifest.permission.CAMERA, REQUEST_RUNTIME_PERMISSION);
        }
    }

    @Override
    int getContentViewId() {
        return R.layout.activity_scan;
    }

    @Override
    int getNavigationMenuItemId() {
        return R.id.navigation_scan;
    }

    @Override
    protected void onResume() {
        super.onResume();

        barcodeView.resume();
    }

    public void pause(View view) {
        barcodeView.pause();
    }

    public void resume(View view) {
        barcodeView.resume();
    }

    public void triggerScan(View view) {
        barcodeView.decodeSingle(callback);
    }

    @Override
    public boolean onKeyDown(int keyCode, KeyEvent event) {
        return barcodeView.onKeyDown(keyCode, event) || super.onKeyDown(keyCode, event);
    }

}
