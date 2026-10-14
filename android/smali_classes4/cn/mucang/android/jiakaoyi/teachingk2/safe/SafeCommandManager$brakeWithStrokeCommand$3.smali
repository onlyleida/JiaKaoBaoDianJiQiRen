.class final Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BBB)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/l<",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g0;",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u000c\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n"
    }
    d2 = {
        "<anonymous>",
        "",
        "it",
        "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveSpeedBrakeInfo;"
    }
    k = 0x3
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field final synthetic $appReason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

.field final synthetic $brake:Ljava/lang/String;

.field final synthetic $brakeDis:B

.field final synthetic $reason:B


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;Ljava/lang/String;BB)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$appReason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$brake:Ljava/lang/String;

    iput-byte p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$brakeDis:B

    iput-byte p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$reason:B

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 11
    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g0;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g0;)V

    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method

.method public final invoke(Lcn/mucang/android/jiakaoyi/signal/communicate/receive/g0;)V
    .locals 3

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/communicate/receive/m;->a:Z

    const-string v0, "\u4e0b\u53d1\u5e26\u884c\u7a0b"

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$appReason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const-string v2, "\u6210\u529f"

    if-eq p1, v1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$brake:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$brake:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 5
    iget-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$brakeDis:B

    if-nez p1, :cond_1

    .line 6
    iget-byte p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$reason:B

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/x;->c(B)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$appReason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    iget-byte v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$reason:B

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/x;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    goto :goto_0

    .line 8
    :cond_2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$appReason:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p1

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    const-string v2, "\u5931\u8d25"

    if-eq p1, v1, :cond_3

    .line 9
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$brake:Ljava/lang/String;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager$brakeWithStrokeCommand$3;->$brake:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
