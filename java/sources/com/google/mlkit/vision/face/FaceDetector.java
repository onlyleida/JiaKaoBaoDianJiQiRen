package com.google.mlkit.vision.face;

import androidx.lifecycle.Lifecycle;
import androidx.lifecycle.b0;
import com.google.android.gms.tasks.Task;
import com.google.android.odml.image.MlImage;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.interfaces.Detector;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public interface FaceDetector extends Detector<List<Face>> {
    @Override // java.io.Closeable, java.lang.AutoCloseable
    @b0(Lifecycle.Event.ON_DESTROY)
    void close();

    Task<List<Face>> process(MlImage mlImage);

    Task<List<Face>> process(InputImage inputImage);
}
