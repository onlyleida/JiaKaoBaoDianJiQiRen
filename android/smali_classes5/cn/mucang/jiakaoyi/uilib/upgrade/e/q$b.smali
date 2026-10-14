.class final Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/jiakaoyi/uilib/upgrade/e/q;->q(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/h/b;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;


# direct methods
.method constructor <init>(Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$b;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Float;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$b;->a:Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    invoke-virtual {v0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/p;->f(F)V

    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p0, p1}, Lcn/mucang/jiakaoyi/uilib/upgrade/e/q$b;->a(Ljava/lang/Float;)V

    return-void
.end method
