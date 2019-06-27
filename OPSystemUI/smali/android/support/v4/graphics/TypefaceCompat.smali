.class public Landroid/support/v4/graphics/TypefaceCompat;
.super Ljava/lang/Object;
.source "TypefaceCompat.java"


# static fields
.field private static final sTypefaceCache:Landroid/support/v4/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/LruCache<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field

.field private static final sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 50
    invoke-static {}, Landroid/support/v4/os/BuildCompat;->isAtLeastP()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatApi28Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatApi28Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 52
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_1

    .line 53
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatApi26Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 54
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x18

    if-lt v0, v1, :cond_2

    .line 55
    invoke-static {}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;->isUsable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 56
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatApi24Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 57
    :cond_2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_3

    .line 58
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatApi21Impl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    goto :goto_0

    .line 60
    :cond_3
    new-instance v0, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    invoke-direct {v0}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;-><init>()V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    .line 67
    :goto_0
    new-instance v0, Landroid/support/v4/util/LruCache;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Landroid/support/v4/util/LruCache;-><init>(I)V

    sput-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    return-void
.end method

.method public static createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "cancellationSignal"    # Landroid/os/CancellationSignal;
    .param p2, "fonts"    # [Landroid/support/v4/provider/FontsContractCompat$FontInfo;
    .param p3, "style"    # I

    .line 156
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    invoke-virtual {v0, p0, p1, p2, p3}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromFontInfo(Landroid/content/Context;Landroid/os/CancellationSignal;[Landroid/support/v4/provider/FontsContractCompat$FontInfo;I)Landroid/graphics/Typeface;

    move-result-object v0

    return-object v0
.end method

.method public static createFromResourcesFamilyXml(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;Landroid/content/res/Resources;IILandroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;Z)Landroid/graphics/Typeface;
    .locals 11
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "entry"    # Landroid/support/v4/content/res/FontResourcesParserCompat$FamilyResourceEntry;
    .param p2, "resources"    # Landroid/content/res/Resources;
    .param p3, "id"    # I
    .param p4, "style"    # I
    .param p5, "fontCallback"    # Landroid/support/v4/content/res/ResourcesCompat$FontCallback;
    .param p6, "handler"    # Landroid/os/Handler;
    .param p7, "isRequestFromLayoutInflator"    # Z

    move-object v0, p1

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    .line 105
    instance-of v1, v0, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    if-eqz v1, :cond_3

    .line 106
    move-object v10, v0

    check-cast v10, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;

    .line 107
    .local v10, "providerEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p7, :cond_1

    .line 108
    invoke-virtual {v10}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getFetchStrategy()I

    move-result v3

    if-nez v3, :cond_0

    :goto_0
    move v5, v2

    goto :goto_1

    :cond_0
    move v5, v1

    goto :goto_1

    :cond_1
    if-nez v8, :cond_0

    goto :goto_0

    .line 111
    .local v5, "isBlocking":Z
    :goto_1
    if-eqz p7, :cond_2

    invoke-virtual {v10}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getTimeout()I

    move-result v1

    :goto_2
    move v6, v1

    goto :goto_3

    :cond_2
    const/4 v1, -0x1

    goto :goto_2

    .line 113
    .local v6, "timeout":I
    :goto_3
    invoke-virtual {v10}, Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;->getRequest()Landroid/support/v4/provider/FontRequest;

    move-result-object v2

    move-object v1, p0

    move-object v3, v8

    move-object v4, v9

    move v7, p4

    invoke-static/range {v1 .. v7}, Landroid/support/v4/provider/FontsContractCompat;->getFontSync(Landroid/content/Context;Landroid/support/v4/provider/FontRequest;Landroid/support/v4/content/res/ResourcesCompat$FontCallback;Landroid/os/Handler;ZII)Landroid/graphics/Typeface;

    move-result-object v1

    .line 115
    .end local v5    # "isBlocking":Z
    .end local v6    # "timeout":I
    .end local v10    # "providerEntry":Landroid/support/v4/content/res/FontResourcesParserCompat$ProviderResourceEntry;
    .local v1, "typeface":Landroid/graphics/Typeface;
    nop

    .line 128
    move-object v3, p0

    move-object v4, p2

    move v5, p4

    goto :goto_4

    .line 116
    .end local v1    # "typeface":Landroid/graphics/Typeface;
    :cond_3
    sget-object v1, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    move-object v2, v0

    check-cast v2, Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;

    move-object v3, p0

    move-object v4, p2

    move v5, p4

    invoke-virtual {v1, v3, v2, v4, v5}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromFontFamilyFilesResourceEntry(Landroid/content/Context;Landroid/support/v4/content/res/FontResourcesParserCompat$FontFamilyFilesResourceEntry;Landroid/content/res/Resources;I)Landroid/graphics/Typeface;

    move-result-object v1

    .line 118
    .restart local v1    # "typeface":Landroid/graphics/Typeface;
    if-eqz v8, :cond_5

    .line 119
    if-eqz v1, :cond_4

    .line 120
    invoke-virtual {v8, v1, v9}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackSuccessAsync(Landroid/graphics/Typeface;Landroid/os/Handler;)V

    goto :goto_4

    .line 122
    :cond_4
    const/4 v2, -0x3

    invoke-virtual {v8, v2, v9}, Landroid/support/v4/content/res/ResourcesCompat$FontCallback;->callbackFailAsync(ILandroid/os/Handler;)V

    .line 128
    :cond_5
    :goto_4
    if-eqz v1, :cond_6

    .line 129
    sget-object v2, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-static {v4, p3, v5}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v1}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    :cond_6
    return-object v1
.end method

.method public static createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "id"    # I
    .param p3, "path"    # Ljava/lang/String;
    .param p4, "style"    # I

    .line 141
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCompatImpl:Landroid/support/v4/graphics/TypefaceCompatBaseImpl;

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/graphics/TypefaceCompatBaseImpl;->createFromResourcesFontFile(Landroid/content/Context;Landroid/content/res/Resources;ILjava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 143
    .local v0, "typeface":Landroid/graphics/Typeface;
    if-eqz v0, :cond_0

    .line 144
    invoke-static {p1, p2, p4}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    .line 145
    .local v1, "resourceUid":Ljava/lang/String;
    sget-object v2, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-virtual {v2, v1, v0}, Landroid/support/v4/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    .end local v1    # "resourceUid":Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method private static createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "style"    # I

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static findFromCache(Landroid/content/res/Resources;II)Landroid/graphics/Typeface;
    .locals 2
    .param p0, "resources"    # Landroid/content/res/Resources;
    .param p1, "id"    # I
    .param p2, "style"    # I

    .line 78
    sget-object v0, Landroid/support/v4/graphics/TypefaceCompat;->sTypefaceCache:Landroid/support/v4/util/LruCache;

    invoke-static {p0, p1, p2}, Landroid/support/v4/graphics/TypefaceCompat;->createResourceUid(Landroid/content/res/Resources;II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v4/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Typeface;

    return-object v0
.end method
