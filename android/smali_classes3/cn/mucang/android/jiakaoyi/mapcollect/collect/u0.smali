.class public abstract Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public final a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public b:Lcn/mucang/android/jiakaoyi/mapcollect/collect/t0;

.field protected c:Z


# direct methods
.method protected constructor <init>(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;->a:Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0

    return-void
.end method

.method public abstract b()Z
.end method

.method public abstract c()Z
.end method

.method public abstract d()V
.end method

.method protected e(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->H()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->GlobalTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 3
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    return-void
.end method
