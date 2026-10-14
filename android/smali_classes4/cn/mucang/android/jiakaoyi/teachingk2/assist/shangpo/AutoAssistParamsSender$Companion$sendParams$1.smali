.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion;->a(IIIIIZLkotlin/jvm/b/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/a<",
        "Lkotlin/v;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"
    }
    d2 = {
        "<anonymous>",
        ""
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
.field final synthetic $ctrlBackClutchValue:I

.field final synthetic $ctrlSpeedBrakeValue:I

.field final synthetic $ctrlSpeedClutchValue:I

.field final synthetic $halfClutchStartValue:I

.field final synthetic $throttleValue:I


# direct methods
.method constructor <init>(IIIII)V
    .locals 0

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$halfClutchStartValue:I

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$throttleValue:I

    iput p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$ctrlSpeedBrakeValue:I

    iput p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$ctrlSpeedClutchValue:I

    iput p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$ctrlBackClutchValue:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/communicate/v;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;-><init>(Z)V

    const/4 v1, 0x3

    .line 2
    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$halfClutchStartValue:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 4
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$throttleValue:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 5
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$ctrlSpeedBrakeValue:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 6
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$ctrlSpeedClutchValue:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/shangpo/AutoAssistParamsSender$Companion$sendParams$1;->$ctrlBackClutchValue:I

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->c(B)V

    .line 8
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->h()Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/com/Cmd;->AutoAssist:Lcn/mucang/android/jiakaoyi/signal/com/Cmd;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/v;->b()[B

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/communicate/w/m;->Q(Lcn/mucang/android/jiakaoyi/signal/com/Cmd;[B)Z

    return-void
.end method
