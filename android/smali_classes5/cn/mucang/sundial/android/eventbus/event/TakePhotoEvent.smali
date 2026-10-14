.class public Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final coach:Lcn/mucang/sundial/android/db/entity/CoachInfo;

.field public final eventType:I

.field public final personMode:I

.field public final student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

.field public final uploadMode:I


# direct methods
.method public constructor <init>(IIILcn/mucang/sundial/android/db/entity/CoachInfo;Lcn/mucang/sundial/android/db/entity/StudentInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->personMode:I

    .line 3
    iput p2, p0, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->uploadMode:I

    .line 4
    iput p3, p0, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->eventType:I

    .line 5
    iput-object p4, p0, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->coach:Lcn/mucang/sundial/android/db/entity/CoachInfo;

    .line 6
    iput-object p5, p0, Lcn/mucang/sundial/android/eventbus/event/TakePhotoEvent;->student:Lcn/mucang/sundial/android/db/entity/StudentInfo;

    return-void
.end method
