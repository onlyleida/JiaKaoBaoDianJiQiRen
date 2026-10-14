.class Lcn/mucang/android/account/AccountManager$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/account/AccountManager;->n(Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcn/mucang/android/account/i/c;

.field final synthetic b:Lcn/mucang/android/account/data/AuthUser;

.field final synthetic c:Lcn/mucang/android/account/AccountManager$ActionType;

.field final synthetic d:Lcn/mucang/android/account/AccountManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/account/AccountManager;Lcn/mucang/android/account/i/c;Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/AccountManager$b;->d:Lcn/mucang/android/account/AccountManager;

    iput-object p2, p0, Lcn/mucang/android/account/AccountManager$b;->a:Lcn/mucang/android/account/i/c;

    iput-object p3, p0, Lcn/mucang/android/account/AccountManager$b;->b:Lcn/mucang/android/account/data/AuthUser;

    iput-object p4, p0, Lcn/mucang/android/account/AccountManager$b;->c:Lcn/mucang/android/account/AccountManager$ActionType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/AccountManager$b;->d:Lcn/mucang/android/account/AccountManager;

    iget-object v1, p0, Lcn/mucang/android/account/AccountManager$b;->a:Lcn/mucang/android/account/i/c;

    iget-object v2, p0, Lcn/mucang/android/account/AccountManager$b;->b:Lcn/mucang/android/account/data/AuthUser;

    iget-object v3, p0, Lcn/mucang/android/account/AccountManager$b;->c:Lcn/mucang/android/account/AccountManager$ActionType;

    invoke-static {v0, v1, v2, v3}, Lcn/mucang/android/account/AccountManager;->a(Lcn/mucang/android/account/AccountManager;Lcn/mucang/android/account/i/c;Lcn/mucang/android/account/data/AuthUser;Lcn/mucang/android/account/AccountManager$ActionType;)V

    return-void
.end method
