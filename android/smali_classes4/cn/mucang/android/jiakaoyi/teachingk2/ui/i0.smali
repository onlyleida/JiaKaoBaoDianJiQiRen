.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/ui/i0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/i0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/i0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/i0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/ui/i0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity$TeachPlanItemBinder;->s(Lcn/mucang/android/jiakaoyi/teachingk2/ui/TeachProgrammeManagerActivity;Lcn/mucang/android/jiakaoyi/teachingk2/model/TeachPlanItemModel;Landroid/view/View;)V

    return-void
.end method
