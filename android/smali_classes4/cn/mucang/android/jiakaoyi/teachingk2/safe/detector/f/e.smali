.class public Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/c;


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;",
            "Lcn/mucang/android/jiakaoyi/signal/c/e;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/FenceDetector$c;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/e;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;

    invoke-virtual {v0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/detector/f/d;->a(Lcn/mucang/android/jiakaoyi/teachingk2/res/model/a;Lcn/mucang/android/jiakaoyi/signal/c/e;Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/center/model/CarBrakeDesc;

    move-result-object p1

    return-object p1
.end method
