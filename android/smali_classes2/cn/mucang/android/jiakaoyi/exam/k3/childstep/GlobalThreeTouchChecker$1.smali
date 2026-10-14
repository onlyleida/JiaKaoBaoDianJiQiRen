.class Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->playThreeTouchTone(Lcn/mucang/android/jiakaoyi/signal/center/model/TouchSensor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->access$100(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;)Z

    move-result v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->access$002(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;Z)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;->access$202(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/GlobalThreeTouchChecker;J)J

    return-void
.end method
