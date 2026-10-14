.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e0;->a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e0;->a:Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/e0;->b:Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;

    invoke-static {v0, v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0$a;->p(Lcn/mucang/jiakaoyi/uilib/login/model/XyUserModel;Lcn/mucang/android/jiakaoyi/teachingk2/login/ui/j0;Landroid/view/View;)V

    return-void
.end method
