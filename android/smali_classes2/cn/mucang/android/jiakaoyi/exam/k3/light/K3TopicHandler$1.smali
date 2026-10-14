.class Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->playVoice(Ljava/lang/String;ILjava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

.field final synthetic val$isPlayDingDong:Z

.field final synthetic val$mid:I

.field final synthetic val$text:Ljava/lang/String;

.field final synthetic val$voiceCode:I

.field final synthetic val$voiceKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;ILjava/lang/String;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$mid:I

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$text:Ljava/lang/String;

    iput p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$voiceCode:I

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$voiceKey:Ljava/lang/String;

    iput-boolean p6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$isPlayDingDong:Z

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method

.method private synthetic a(Ljava/lang/Boolean;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$102(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;Z)Z

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$202(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;J)J

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$300(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$200(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$302(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;J)J

    :cond_0
    return-void
.end method


# virtual methods
.method public synthetic b(Ljava/lang/Boolean;)V
    .locals 0

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->a(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onSpeakEnd()V
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$mid:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)I

    move-result v1

    if-eq v0, v1, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startSpeaking end text "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ;voiceCode "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$voiceCode:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ";voiceKey "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$voiceKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->val$isPlayDingDong:Z

    if-eqz v0, :cond_1

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/exam/R$raw;->dingdong:I

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/light/b;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/b;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/framework/utils/g0;->c(ILcn/mucang/android/jiakaoyi/framework/h/b;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$102(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;Z)Z

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$202(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;J)J

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$300(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_2

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$200(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;)J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;->access$302(Lcn/mucang/android/jiakaoyi/exam/k3/light/K3TopicHandler;J)J

    :cond_2
    :goto_0
    return-void
.end method
