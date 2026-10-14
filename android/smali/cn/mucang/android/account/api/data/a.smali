.class public Lcn/mucang/android/account/api/data/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/a;->b:Ljava/lang/String;

    return-object v0
.end method

.method public b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/account/api/data/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public c(Ljava/lang/String;)Lcn/mucang/android/account/api/data/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/a;->b:Ljava/lang/String;

    return-object p0
.end method

.method public d(Ljava/lang/String;)Lcn/mucang/android/account/api/data/a;
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/account/api/data/a;->a:Ljava/lang/String;

    return-object p0
.end method
