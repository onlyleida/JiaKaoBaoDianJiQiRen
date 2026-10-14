.class Lcn/mucang/android/download/a$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/download/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# static fields
.field static a:Lcn/mucang/android/download/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/download/a;

    invoke-direct {v0}, Lcn/mucang/android/download/a;-><init>()V

    sput-object v0, Lcn/mucang/android/download/a$b;->a:Lcn/mucang/android/download/a;

    return-void
.end method
