.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

.field public final synthetic c:Landroid/view/View;

.field public final synthetic d:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iput-object p3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->c:Landroid/view/View;

    iput-object p4, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->a:Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->b:Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;

    iget-object v2, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->c:Landroid/view/View;

    iget-object v3, p0, Lcn/mucang/jiakaoyi/uilib/ui/dialog/d0;->d:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcn/mucang/jiakaoyi/uilib/ui/dialog/o0$b$a;->h(Lcn/mucang/android/jiakaoyi/framework/tts/models/VoicePackEntity;Landroid/view/View;Ljava/lang/String;)V

    return-void
.end method
