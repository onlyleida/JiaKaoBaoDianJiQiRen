.class public Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final courseTime:J

.field private final totalDistance:D


# direct methods
.method public constructor <init>(JD)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-wide p1, p0, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->courseTime:J

    .line 3
    iput-wide p3, p0, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->totalDistance:D

    return-void
.end method


# virtual methods
.method public getCourseTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->courseTime:J

    return-wide v0
.end method

.method public getTotalDistance()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/sundial/android/eventbus/event/CourseTimeChangeEvent;->totalDistance:D

    return-wide v0
.end method
