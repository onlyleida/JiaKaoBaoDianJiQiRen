.class final Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;->x(Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity;Landroid/view/View;)V
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
.field final synthetic $ctrBackClutch:Ljava/lang/String;

.field final synthetic $ctrSpeedClutch:Ljava/lang/String;

.field final synthetic $ctrlSpeedBrake:Ljava/lang/String;

.field final synthetic $halfClutchStart:Ljava/lang/String;

.field final synthetic $throttle:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$halfClutchStart:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$throttle:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$ctrlSpeedBrake:Ljava/lang/String;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$ctrSpeedClutch:Ljava/lang/String;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$ctrBackClutch:Ljava/lang/String;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 1

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$halfClutchStart:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->k(I)V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$throttle:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->t(I)V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$ctrlSpeedBrake:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->m(I)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$ctrSpeedClutch:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->n(I)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/CalibartionActivity$initAutoAssist$1$1;->$ctrBackClutch:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/calibration/o;->l(I)V

    return-void
.end method
