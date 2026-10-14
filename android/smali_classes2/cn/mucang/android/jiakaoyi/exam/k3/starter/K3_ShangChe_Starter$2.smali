.class Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$2;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->playCloseEngineVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->access$202(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;Z)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;->access$302(Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_ShangChe_Starter;J)J

    return-void
.end method
