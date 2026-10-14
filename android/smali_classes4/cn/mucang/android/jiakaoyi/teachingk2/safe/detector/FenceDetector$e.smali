.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

.field public final b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

.field public final c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field public final d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field public final e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->b:Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    .line 4
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->c:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$e;->e:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method
