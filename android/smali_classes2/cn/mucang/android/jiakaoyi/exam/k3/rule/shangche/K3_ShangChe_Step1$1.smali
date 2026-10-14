.class Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->isEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->access$002(Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;Z)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;->access$102(Lcn/mucang/android/jiakaoyi/exam/k3/rule/shangche/K3_ShangChe_Step1;Z)Z

    return-void
.end method
