.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/tts/voice/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/j;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/j;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/j;->a:Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/voice/j;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/m;->m(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method
