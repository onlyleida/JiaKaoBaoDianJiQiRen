.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/g0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g0;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/g0;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    invoke-virtual {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b;->h(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V

    return-void
.end method
