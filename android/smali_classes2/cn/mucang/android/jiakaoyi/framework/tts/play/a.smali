.class public final synthetic Lcn/mucang/android/jiakaoyi/framework/tts/play/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/framework/tts/f;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/framework/tts/f;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/framework/tts/play/a;->a:Lcn/mucang/android/jiakaoyi/framework/tts/f;

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/framework/tts/f;->onIntercept()V

    return-void
.end method
