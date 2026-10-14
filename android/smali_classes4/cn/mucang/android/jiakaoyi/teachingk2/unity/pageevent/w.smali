.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/b/a;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/b/a;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w;->a:Lkotlin/jvm/b/a;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    return-void
.end method


# virtual methods
.method public final onDismiss(Landroid/content/DialogInterface;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w;->a:Lkotlin/jvm/b/a;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/w;->b:Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;->q(Lkotlin/jvm/b/a;Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/FirstPracticePage;Landroid/content/DialogInterface;)V

    return-void
.end method
