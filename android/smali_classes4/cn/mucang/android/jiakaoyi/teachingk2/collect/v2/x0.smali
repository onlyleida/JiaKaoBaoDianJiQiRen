.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/engine/model/Step;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x0;->b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/x0;->b:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity$b;->o(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/SelectStepActivity;Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/view/View;)V

    return-void
.end method
