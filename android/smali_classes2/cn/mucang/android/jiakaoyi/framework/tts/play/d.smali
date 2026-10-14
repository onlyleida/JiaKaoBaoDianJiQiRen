.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/tts/play/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/d;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-void
.end method


# virtual methods
.method public final callback(Ljava/lang/Object;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/d;->a:Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/d;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/framework/tts/play/f$b;->e(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;Ljava/lang/Boolean;)V

    return-void
.end method
