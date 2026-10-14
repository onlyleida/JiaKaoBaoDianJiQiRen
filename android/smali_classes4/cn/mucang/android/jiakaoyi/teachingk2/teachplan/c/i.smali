.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/EditText;

.field public final synthetic b:Landroid/widget/RadioGroup;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

.field public final synthetic e:Z

.field public final synthetic f:Landroid/app/Activity;

.field public final synthetic g:Landroid/app/Dialog;

.field public final synthetic h:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/EditText;Landroid/widget/RadioGroup;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;ZLandroid/app/Activity;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->a:Landroid/widget/EditText;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->b:Landroid/widget/RadioGroup;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->d:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->e:Z

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->f:Landroid/app/Activity;

    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->g:Landroid/app/Dialog;

    iput-object p8, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->h:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->a:Landroid/widget/EditText;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->b:Landroid/widget/RadioGroup;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->c:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->d:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->e:Z

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->f:Landroid/app/Activity;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->g:Landroid/app/Dialog;

    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/i;->h:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    move-object v8, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->m(Landroid/widget/EditText;Landroid/widget/RadioGroup;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;ZLandroid/app/Activity;Landroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/view/View;)V

    return-void
.end method
