.class public Lcn/mucang/android/core/webview/MenuOptions;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final COPY:Ljava/lang/String; = "copy"

.field private static final DEFAULT:Ljava/lang/String; = "refresh,copy"

.field public static final REFRESH:Ljava/lang/String; = "refresh"


# instance fields
.field private options:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/core/webview/MenuOptions;->options:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static form(Ljava/lang/String;)Lcn/mucang/android/core/webview/MenuOptions;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/core/webview/MenuOptions;

    invoke-direct {v0}, Lcn/mucang/android/core/webview/MenuOptions;-><init>()V

    .line 2
    invoke-static {p0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    :cond_0
    const-string v1, ","

    .line 3
    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 4
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 5
    invoke-virtual {v0, v3}, Lcn/mucang/android/core/webview/MenuOptions;->add(Ljava/lang/String;)Lcn/mucang/android/core/webview/MenuOptions;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public add(Ljava/lang/String;)Lcn/mucang/android/core/webview/MenuOptions;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/MenuOptions;->options:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/core/webview/MenuOptions;->options:Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/MenuOptions;->options:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public getOptions()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/core/webview/MenuOptions;->options:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "refresh,copy"

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/core/webview/MenuOptions;->options:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
