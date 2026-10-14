.class Lcn/mucang/android/jiakaoyi/examk2/common/n$b;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/examk2/common/n;->h()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/examk2/common/n;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/common/n;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->b(Lcn/mucang/android/jiakaoyi/examk2/common/n;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/common/n$b;->a:Lcn/mucang/android/jiakaoyi/examk2/common/n;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/examk2/common/n;->c(Lcn/mucang/android/jiakaoyi/examk2/common/n;)Ljava/lang/Runnable;

    move-result-object v0

    const-wide/16 v1, 0x1388

    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/u;->d(Ljava/lang/Runnable;J)V

    :cond_0
    return-void
.end method
