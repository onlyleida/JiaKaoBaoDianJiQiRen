.class Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/tts/play/e;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->e(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->a(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;)Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    move-result-object v0

    if-ne v0, p1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->b(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;Z)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f$a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;->c(Lcn/mucang/android/jiakaoyi/framework/tts/play/g/f;)Lcn/mucang/android/jiakaoyi/framework/tts/play/e;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/e;->a(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    :cond_0
    return-void
.end method

.method public b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    return-void
.end method

.method public c(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    return-void
.end method
