.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/r;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/r;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/r;->b:Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity$b;->n(Lcn/mucang/android/jiakaoyi/teachingk2/collect/TeachBindStepActivity;Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/data/StepGroupModel;Landroid/view/View;)V

    return-void
.end method
