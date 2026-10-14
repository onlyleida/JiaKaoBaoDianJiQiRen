.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/v0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;

.field public final synthetic b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/v0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/v0;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/v0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/v0;->b:Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity$TrainingItemBinder;->o(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TrainingSiteManageActivity;Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;Landroid/view/View;)V

    return-void
.end method
