.class public Lcn/mucang/android/jiakaoyi/teachingk2/rule/zhailudiaotou/ZhaiLuStep1;
.super Lcn/mucang/android/jiakaoyi/teachingk2/u0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/u0/a<",
        "Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/s0/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/u0/a;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    return-void
.end method


# virtual methods
.method public stepName()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhaiLuDiaoTou:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/model/Step;->getStepName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
