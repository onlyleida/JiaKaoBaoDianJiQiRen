.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

.field public final synthetic c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/framework/base/h;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->c:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/f0;->d:Lcn/mucang/android/jiakaoyi/framework/base/h;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;->p(Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;Lcn/mucang/android/jiakaoyi/framework/base/h;Landroid/view/View;)V

    return-void
.end method
