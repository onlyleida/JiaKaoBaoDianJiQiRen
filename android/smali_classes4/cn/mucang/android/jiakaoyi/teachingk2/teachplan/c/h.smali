.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/app/Activity;

.field public final synthetic b:J

.field public final synthetic c:Ljava/util/List;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;


# direct methods
.method public synthetic constructor <init>(Landroid/app/Activity;JLjava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->a:Landroid/app/Activity;

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->b:J

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->c:Ljava/util/List;

    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->d:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->a:Landroid/app/Activity;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->b:J

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->c:Ljava/util/List;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/h;->d:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;

    invoke-static {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->h(Landroid/app/Activity;JLjava/util/List;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/TeachPlanListViewModel;)V

    return-void
.end method
