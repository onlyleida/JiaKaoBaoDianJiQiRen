.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:J

.field public final synthetic c:J

.field public final synthetic d:Landroid/app/Dialog;

.field public final synthetic e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;JJLandroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->b:J

    iput-wide p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->c:J

    iput-object p6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->d:Landroid/app/Dialog;

    iput-object p7, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->a:Landroid/app/Activity;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->b:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->c:J

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->d:Landroid/app/Dialog;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/q;->e:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    move-object v7, p1

    invoke-static/range {v0 .. v7}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/s;->f(Landroid/app/Activity;JJLandroid/app/Dialog;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;Landroid/view/View;)V

    return-void
.end method
