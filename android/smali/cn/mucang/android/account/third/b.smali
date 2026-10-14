.class public final synthetic Lcn/mucang/android/account/third/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcn/mucang/android/account/i/a;


# direct methods
.method public synthetic constructor <init>(Lcn/mucang/android/account/i/a;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/third/b;->a:Lcn/mucang/android/account/i/a;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcn/mucang/android/account/third/b;->a:Lcn/mucang/android/account/i/a;

    invoke-static {v0}, Lcn/mucang/android/account/third/y;->j(Lcn/mucang/android/account/i/a;)V

    return-void
.end method
