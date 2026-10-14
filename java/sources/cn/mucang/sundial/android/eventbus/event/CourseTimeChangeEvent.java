package cn.mucang.sundial.android.eventbus.event;

/* JADX INFO: loaded from: classes5.dex */
public class CourseTimeChangeEvent {
    private final long courseTime;
    private final double totalDistance;

    public CourseTimeChangeEvent(long j, double d2) {
        this.courseTime = j;
        this.totalDistance = d2;
    }

    public long getCourseTime() {
        return this.courseTime;
    }

    public double getTotalDistance() {
        return this.totalDistance;
    }
}
