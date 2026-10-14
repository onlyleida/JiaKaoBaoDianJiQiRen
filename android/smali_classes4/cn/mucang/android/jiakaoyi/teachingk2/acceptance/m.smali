.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/m;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity$a;->n(Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceModel;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceMainActivity;Landroid/view/View;)V

    return-void
.end method
