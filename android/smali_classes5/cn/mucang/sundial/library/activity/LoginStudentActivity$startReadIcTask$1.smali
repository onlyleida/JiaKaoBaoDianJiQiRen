.class public final Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/sundial/library/activity/LoginStudentActivity;->startReadIcTask()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0017\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "cn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1",
        "Landroid/os/Handler$Callback;",
        "Landroid/os/Message;",
        "msg",
        "",
        "handleMessage",
        "(Landroid/os/Message;)Z",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;


# direct methods
.method constructor <init>(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 7

    const-string v0, "msg"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p1, Landroid/os/Message;->what:I

    const/4 v0, 0x0

    const/16 v1, 0x22

    if-eq p1, v1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getIcReader$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Lcn/mucang/sundial/library/device/IcReader;

    move-result-object p1

    const/4 v1, 0x0

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Lcn/mucang/sundial/library/device/IcReader;->getData()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_0
    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 3
    invoke-static {p1}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v3, 0x1

    :goto_2
    if-eqz v3, :cond_4

    .line 4
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1, v0}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$setSpeakIcNotMatch$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;Z)V

    .line 5
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1, v1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$setLastIcData$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$rescheduleReadIcCardTask(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V

    return v2

    .line 7
    :cond_4
    iget-object v3, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v3}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getLastIcData$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 8
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$rescheduleReadIcCardTask(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V

    return v2

    .line 9
    :cond_5
    iget-object v3, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v3, p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$setLastIcData$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;Ljava/lang/String;)V

    .line 10
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "raw length="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",result="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 11
    :try_start_0
    sget-object v3, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 12
    const-class v3, Lcn/mucang/sundial/library/entity/IcInfo;

    invoke-static {p1, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/sundial/library/entity/IcInfo;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v3, :cond_d

    .line 13
    :try_start_1
    new-instance v4, Lcn/mucang/sundial/library/http/CardApi;

    invoke-direct {v4}, Lcn/mucang/sundial/library/http/CardApi;-><init>()V

    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/IcInfo;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcn/mucang/sundial/library/http/CardApi;->realityCard(Ljava/lang/String;)Lcn/mucang/sundial/library/entity/ServerCardInfo;

    move-result-object v3

    .line 14
    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception v3

    :try_start_2
    sget-object v4, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {v3}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 15
    :goto_3
    invoke-static {v3}, Lkotlin/Result;->isFailure-impl(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    move-object v3, v1

    .line 16
    :cond_6
    check-cast v3, Lcn/mucang/sundial/library/entity/ServerCardInfo;

    if-nez v3, :cond_7

    .line 17
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1, v1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$setLastIcData$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;Ljava/lang/String;)V

    goto :goto_5

    .line 18
    :cond_7
    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerCardInfo;->getType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v5

    const v6, -0xcc8e5e5

    if-eq v5, v6, :cond_9

    const v6, 0x3e4147a

    if-eq v5, v6, :cond_8

    goto :goto_5

    :cond_8
    const-string v5, "Coach"

    .line 19
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcn/mucang/sundial/android/PersonMode;->COACH:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    goto :goto_4

    :cond_9
    const-string v5, "Student"

    .line 20
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    sget-object v4, Lcn/mucang/sundial/android/PersonMode;->STUDENT:Lcn/mucang/sundial/android/PersonMode;

    invoke-virtual {v4}, Ljava/lang/Enum;->ordinal()I

    move-result v4

    .line 21
    :goto_4
    iget-object v5, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {v5}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getPersonMode$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)I

    move-result v5

    if-eq v4, v5, :cond_a

    .line 22
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$getSpeakIcNotMatch$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)Z

    move-result p1

    if-nez p1, :cond_d

    const-string p1, "\u8bf7\u63d2\u5165\u5b66\u5458\u5361"

    const/4 v0, 0x2

    .line 23
    invoke-static {p1, v1, v0, v1}, Lcn/mucang/sundial/library/tts/Tts;->speak$default(Ljava/lang/String;Lcn/mucang/sundial/library/tts/SpeakListener;ILjava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1, v2}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$setSpeakIcNotMatch$p(Lcn/mucang/sundial/library/activity/LoginStudentActivity;Z)V

    goto :goto_5

    .line 25
    :cond_a
    invoke-virtual {v3}, Lcn/mucang/sundial/library/entity/ServerCardInfo;->getCertificateCode()Ljava/lang/String;

    move-result-object v1

    .line 26
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_b

    const/4 v0, 0x1

    :cond_b
    if-eqz v0, :cond_c

    goto :goto_5

    .line 27
    :cond_c
    new-instance v0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;

    invoke-direct {v0, v1, p0, p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1$handleMessage$$inlined$runCatching$lambda$1;-><init>(Ljava/lang/String;Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;Ljava/lang/String;)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->f(Ljava/lang/Runnable;)V

    .line 28
    :cond_d
    :goto_5
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 29
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_6

    :catchall_1
    move-exception p1

    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    :goto_6
    iget-object p1, p0, Lcn/mucang/sundial/library/activity/LoginStudentActivity$startReadIcTask$1;->this$0:Lcn/mucang/sundial/library/activity/LoginStudentActivity;

    invoke-static {p1}, Lcn/mucang/sundial/library/activity/LoginStudentActivity;->access$rescheduleReadIcCardTask(Lcn/mucang/sundial/library/activity/LoginStudentActivity;)V

    return v2
.end method
