.class public final synthetic Lcn/mucang/android/account/m/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/m/b;

.field public final synthetic b:Lcn/mucang/android/account/m/d/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/m/b;Lcn/mucang/android/account/m/d/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/m/a;->a:Lcn/mucang/android/account/m/b;

    iput-object p2, p0, Lcn/mucang/android/account/m/a;->b:Lcn/mucang/android/account/m/d/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcn/mucang/android/account/m/a;->a:Lcn/mucang/android/account/m/b;

    iget-object v1, p0, Lcn/mucang/android/account/m/a;->b:Lcn/mucang/android/account/m/d/a;

    invoke-static {v0, v1}, Lcn/mucang/android/account/m/b;->g(Lcn/mucang/android/account/m/b;Lcn/mucang/android/account/m/d/a;)V

    return-void
.end method
