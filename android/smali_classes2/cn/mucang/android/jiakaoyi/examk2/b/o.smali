.class public Lcn/mucang/android/jiakaoyi/examk2/b/o;
.super Lcn/mucang/android/jiakaoyi/examk2/b/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/b/g<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/j;",
        ">;"
    }
.end annotation


# instance fields
.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/j;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/examk2/b/g;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/o;->b:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/b/o;->c:Z

    return-void
.end method
