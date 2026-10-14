.class Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$2;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playingDeductVoice(Lcn/mucang/android/jiakaoyi/exam/k3/light/LightExamModel;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$402(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;Z)Z

    return-void
.end method
