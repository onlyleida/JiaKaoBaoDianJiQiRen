.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/c0;->c:Landroid/view/View;

    invoke-virtual {v0, v1, v2}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->f(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;)V

    return-void
.end method
