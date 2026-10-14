.class public final synthetic Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/FilenameFilter;


# static fields
.field public static final synthetic a:Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;->a:Lcn/mucang/android/jiakaoyi/engine/trace/upload/b;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    invoke-static {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/trace/upload/f;->a(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
