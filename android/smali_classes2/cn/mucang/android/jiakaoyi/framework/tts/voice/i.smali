.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/tts/voice/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

.field public final synthetic b:Z


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/i;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/i;->b:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/i;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/i;->b:Z

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->o(Z)V

    return-void
.end method
