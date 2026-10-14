.class final Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->m(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Landroid/widget/RadioGroup;I)V
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
.field final synthetic $checkedId:I

.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;I)V
    .locals 0

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;

    iput p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;->$checkedId:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;->invoke()V

    sget-object v0, Lkotlin/v;->a:Lkotlin/v;

    return-object v0
.end method

.method public final invoke()V
    .locals 3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;->this$0:Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity$init$2$1;->$checkedId:I

    sget v2, Lcn/mucang/android/jiakaoyi/teachbase/R$id;->rb03:I

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;->k(Lcn/mucang/android/jiakaoyi/teachingk2/setting/SundialCameraSettingActivity;Z)V

    return-void
.end method
