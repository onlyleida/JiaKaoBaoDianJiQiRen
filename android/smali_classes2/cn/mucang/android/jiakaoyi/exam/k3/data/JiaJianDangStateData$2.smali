.class Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData$2;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->d(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;)J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/JiaJianDangStateData;->changeGearStartTime:J

    return-void
.end method
