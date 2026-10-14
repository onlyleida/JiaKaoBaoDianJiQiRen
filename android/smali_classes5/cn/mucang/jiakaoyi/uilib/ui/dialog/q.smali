.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/q;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/q;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/q;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/q;->b:Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;

    invoke-virtual {v0, v1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/m0;->b(Lcn/mucang/android/jiakaoyi/framework/tts/voice/o;)V

    return-void
.end method
