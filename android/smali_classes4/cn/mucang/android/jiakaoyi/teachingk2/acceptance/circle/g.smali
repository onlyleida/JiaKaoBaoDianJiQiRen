.class public final synthetic Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lkotlin/jvm/internal/Ref$ObjectRef;

.field public final synthetic b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

.field public final synthetic c:Landroidx/appcompat/app/d;


# direct methods
.method public synthetic constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;->c:Landroidx/appcompat/app/d;

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;->a:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/g;->c:Landroidx/appcompat/app/d;

    invoke-static {v0, v1, v2, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl$initAndStart$1;->d(Lkotlin/jvm/internal/Ref$ObjectRef;Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/circle/CircleAcceptanceImpl;Landroidx/appcompat/app/d;Landroid/view/View;)V

    return-void
.end method
