.class public final synthetic Lcn/mucang/android/account/j/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Lcn/mucang/android/account/j/h;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/account/j/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcn/mucang/android/account/j/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/mucang/android/account/j/c;->c:Lcn/mucang/android/account/j/h;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcn/mucang/android/account/j/c;->a:Ljava/lang/String;

    iget-object v1, p0, Lcn/mucang/android/account/j/c;->b:Ljava/lang/String;

    iget-object v2, p0, Lcn/mucang/android/account/j/c;->c:Lcn/mucang/android/account/j/h;

    invoke-static {v0, v1, v2}, Lcn/mucang/android/account/j/i;->k(Ljava/lang/String;Ljava/lang/String;Lcn/mucang/android/account/j/h;)V

    return-void
.end method
