.class public final synthetic Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/c;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/c;->b:Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;

    invoke-static {v0, v1, p1}, Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity$b;->n(Ljava/lang/String;Lcn/mucang/jiakaoyi/uilib/ui/setting/tts/TtsDebugActivity;Landroid/view/View;)V

    return-void
.end method
