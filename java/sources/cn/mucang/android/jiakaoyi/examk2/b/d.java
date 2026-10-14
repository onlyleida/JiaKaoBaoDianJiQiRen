package cn.mucang.android.jiakaoyi.examk2.b;

import cn.mucang.android.jiakaoyi.engine.processor.exam.ExamProcessor;
import cn.mucang.android.jiakaoyi.examk2.config.K2GlobalConfig;
import com.amap.api.maps.model.BitmapDescriptorFactory;

/* JADX INFO: loaded from: classes2.dex */
public class d extends cn.mucang.android.jiakaoyi.engine.processor.exam.step.d<K2GlobalConfig> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f3277a;
    public float b;
    public int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.hpmap.a.a.d f3278d;

    public d(K2GlobalConfig k2GlobalConfig, cn.mucang.android.jiakaoyi.hpmap.a.a.d dVar) {
        super(k2GlobalConfig);
        this.f3277a = false;
        this.b = BitmapDescriptorFactory.HUE_RED;
        this.c = 500;
        this.f3278d = dVar;
    }

    @Override // cn.mucang.android.jiakaoyi.engine.processor.exam.step.d
    public void onChange(cn.mucang.android.jiakaoyi.signal.c.e eVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, ExamProcessor examProcessor) {
        super.onChange(eVar, bVar, examProcessor);
        cn.mucang.android.jiakaoyi.hpmap.a.a.d dVar = this.f3278d;
        if (dVar != null) {
            dVar.a(eVar, bVar, examProcessor);
        }
    }
}
