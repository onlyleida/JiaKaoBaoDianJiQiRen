.class Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Ljava/util/HashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Boolean;)V
    .locals 1

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200241:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;->access$100(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    sget-object v0, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalJiaJianDangChecker$1;->callback(Ljava/lang/Boolean;)V

    return-void
.end method
