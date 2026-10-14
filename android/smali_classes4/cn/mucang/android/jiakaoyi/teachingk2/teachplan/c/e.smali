.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Landroid/widget/RadioGroup;

.field public final synthetic b:Landroid/app/Activity;

.field public final synthetic c:Landroid/widget/TextView;

.field public final synthetic d:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;


# direct methods
.method public synthetic constructor <init>(Landroid/widget/RadioGroup;Landroid/app/Activity;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->a:Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->b:Landroid/app/Activity;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->c:Landroid/widget/TextView;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->a:Landroid/widget/RadioGroup;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->b:Landroid/app/Activity;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->c:Landroid/widget/TextView;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/e;->d:Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;

    invoke-static {v0, v1, v2, v3, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r;->k(Landroid/widget/RadioGroup;Landroid/app/Activity;Landroid/widget/TextView;Lcn/mucang/android/jiakaoyi/teachingk2/teachplan/c/r$e;Landroid/view/View;)V

    return-void
.end method
