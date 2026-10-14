.class public final synthetic Lcn/mucang/android/download/service/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/core/utils/g$a;


# static fields
.field public static final synthetic a:Lcn/mucang/android/download/service/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/download/service/b;

    invoke-direct {v0}, Lcn/mucang/android/download/service/b;-><init>()V

    sput-object v0, Lcn/mucang/android/download/service/b;->a:Lcn/mucang/android/download/service/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transform(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Lcn/mucang/android/download/service/f;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
