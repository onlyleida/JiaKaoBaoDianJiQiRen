package cn.mucang.android.jiakaoyi.engine.i;

import android.location.Location;
import cn.mucang.android.jiakaoyi.engine.config.route.RouteConfig;
import cn.mucang.android.jiakaoyi.engine.config.route.StepConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public interface c {

    public interface a {
        cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createStep(b bVar, StepConfig stepConfig, boolean z);
    }

    public static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Location f3083a;
        public Location b;
        public double c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Step f3084d;
        public String k;
        public String l;
        public int m;
        public Integer n;
        public List<cn.mucang.android.jiakaoyi.engine.j.a> o;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f3085e = true;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f3086f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f3087g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public float f3088h = -1.0f;
        public int i = -1;
        public long j = -1;
        public boolean p = true;

        public b(Step step, Location location) {
            this.f3083a = location;
            this.f3084d = step;
        }

        public String toString() {
            return "StepInfo{location=" + this.f3083a + ", brakePoint=" + this.b + ", brakeDistance=" + this.c + ", step=" + this.f3084d + ", playStartVoice=" + this.f3085e + ", judgeTurnLight=" + this.f3086f + ", judgeBrake=" + this.f3087g + ", stepDistance=" + this.f3088h + ", stepIndexOnRoute=" + this.i + ", orderId=" + this.j + ", alias='" + this.k + "', startVoice='" + this.l + "', teachNum='" + this.m + "'}";
        }
    }

    boolean canExeMoreThanOneStep(RouteConfig routeConfig);

    cn.mucang.android.jiakaoyi.engine.processor.exam.step.b createGlobalEvents(StepConfig stepConfig);

    int getEngineType();

    RouteConfig getRouteConfig();

    a stepCreator();

    List<b> stepList();
}
