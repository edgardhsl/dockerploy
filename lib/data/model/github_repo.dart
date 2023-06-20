import 'package:dockerploy/core/util/reflector/reflector.dart';

@Reflector()
class GithubRepo {
  GithubRepo({
    required this.id,
    required this.nodeId,
    required this.name,
    required this.fullName,
    required this.owner,
    required this.private,
    required this.htmlUrl,
    required this.description,
    required this.fork,
    required this.url,
    required this.archiveUrl,
    required this.assigneesUrl,
    required this.blobsUrl,
    required this.branchesUrl,
    required this.collaboratorsUrl,
    required this.commentsUrl,
    required this.commitsUrl,
    required this.compareUrl,
    required this.contentsUrl,
    required this.contributorsUrl,
    required this.deploymentsUrl,
    required this.downloadsUrl,
    required this.eventsUrl,
    required this.forksUrl,
    required this.gitCommitsUrl,
    required this.gitRefsUrl,
    required this.gitTagsUrl,
    required this.gitUrl,
    required this.issueCommentUrl,
    required this.issueEventsUrl,
    required this.issuesUrl,
    required this.keysUrl,
    required this.labelsUrl,
    required this.languagesUrl,
    required this.mergesUrl,
    required this.milestonesUrl,
    required this.notificationsUrl,
    required this.pullsUrl,
    required this.releasesUrl,
    required this.sshUrl,
    required this.stargazersUrl,
    required this.statusesUrl,
    required this.subscribersUrl,
    required this.subscriptionUrl,
    required this.tagsUrl,
    required this.teamsUrl,
    required this.treesUrl,
    required this.cloneUrl,
    required this.mirrorUrl,
    required this.hooksUrl,
    required this.svnUrl,
    required this.homepage,
    this.language,
    required this.forksCount,
    required this.stargazersCount,
    required this.watchersCount,
    required this.size,
    required this.defaultBranch,
    required this.openIssuesCount,
    required this.isTemplate,
    required this.topics,
    required this.hasIssues,
    required this.hasProjects,
    required this.hasWiki,
    required this.hasPages,
    required this.hasDownloads,
    required this.hasDiscussions,
    required this.archived,
    required this.disabled,
    required this.visibility,
    required this.pushedAt,
    required this.createdAt,
    required this.updatedAt,
    required this.permissions,
    required this.securityAndAnalysis,
  });
  late final int id;
  late final String nodeId;
  late final String name;
  late final String fullName;
  late final Owner owner;
  late final bool private;
  late final String htmlUrl;
  late final String description;
  late final bool fork;
  late final String url;
  late final String archiveUrl;
  late final String assigneesUrl;
  late final String blobsUrl;
  late final String branchesUrl;
  late final String collaboratorsUrl;
  late final String commentsUrl;
  late final String commitsUrl;
  late final String compareUrl;
  late final String contentsUrl;
  late final String contributorsUrl;
  late final String deploymentsUrl;
  late final String downloadsUrl;
  late final String eventsUrl;
  late final String forksUrl;
  late final String gitCommitsUrl;
  late final String gitRefsUrl;
  late final String gitTagsUrl;
  late final String gitUrl;
  late final String issueCommentUrl;
  late final String issueEventsUrl;
  late final String issuesUrl;
  late final String keysUrl;
  late final String labelsUrl;
  late final String languagesUrl;
  late final String mergesUrl;
  late final String milestonesUrl;
  late final String notificationsUrl;
  late final String pullsUrl;
  late final String releasesUrl;
  late final String sshUrl;
  late final String stargazersUrl;
  late final String statusesUrl;
  late final String subscribersUrl;
  late final String subscriptionUrl;
  late final String tagsUrl;
  late final String teamsUrl;
  late final String treesUrl;
  late final String cloneUrl;
  late final String mirrorUrl;
  late final String hooksUrl;
  late final String svnUrl;
  late final String homepage;
  late final Null language;
  late final int forksCount;
  late final int stargazersCount;
  late final int watchersCount;
  late final int size;
  late final String defaultBranch;
  late final int openIssuesCount;
  late final bool isTemplate;
  late final List<String> topics;
  late final bool hasIssues;
  late final bool hasProjects;
  late final bool hasWiki;
  late final bool hasPages;
  late final bool hasDownloads;
  late final bool hasDiscussions;
  late final bool archived;
  late final bool disabled;
  late final String visibility;
  late final String pushedAt;
  late final String createdAt;
  late final String updatedAt;
  late final Permissions permissions;
  late final SecurityAndAnalysis securityAndAnalysis;

  GithubRepo.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nodeId = json['node_id'];
    name = json['name'];
    fullName = json['full_name'];
    owner = Owner.fromJson(json['owner']);
    private = json['private'];
    htmlUrl = json['html_url'];
    description = json['description'];
    fork = json['fork'];
    url = json['url'];
    archiveUrl = json['archive_url'];
    assigneesUrl = json['assignees_url'];
    blobsUrl = json['blobs_url'];
    branchesUrl = json['branches_url'];
    collaboratorsUrl = json['collaborators_url'];
    commentsUrl = json['comments_url'];
    commitsUrl = json['commits_url'];
    compareUrl = json['compare_url'];
    contentsUrl = json['contents_url'];
    contributorsUrl = json['contributors_url'];
    deploymentsUrl = json['deployments_url'];
    downloadsUrl = json['downloads_url'];
    eventsUrl = json['events_url'];
    forksUrl = json['forks_url'];
    gitCommitsUrl = json['git_commits_url'];
    gitRefsUrl = json['git_refs_url'];
    gitTagsUrl = json['git_tags_url'];
    gitUrl = json['git_url'];
    issueCommentUrl = json['issue_comment_url'];
    issueEventsUrl = json['issue_events_url'];
    issuesUrl = json['issues_url'];
    keysUrl = json['keys_url'];
    labelsUrl = json['labels_url'];
    languagesUrl = json['languages_url'];
    mergesUrl = json['merges_url'];
    milestonesUrl = json['milestones_url'];
    notificationsUrl = json['notifications_url'];
    pullsUrl = json['pulls_url'];
    releasesUrl = json['releases_url'];
    sshUrl = json['ssh_url'];
    stargazersUrl = json['stargazers_url'];
    statusesUrl = json['statuses_url'];
    subscribersUrl = json['subscribers_url'];
    subscriptionUrl = json['subscription_url'];
    tagsUrl = json['tags_url'];
    teamsUrl = json['teams_url'];
    treesUrl = json['trees_url'];
    cloneUrl = json['clone_url'];
    mirrorUrl = json['mirror_url'];
    hooksUrl = json['hooks_url'];
    svnUrl = json['svn_url'];
    homepage = json['homepage'];
    language = null;
    forksCount = json['forks_count'];
    stargazersCount = json['stargazers_count'];
    watchersCount = json['watchers_count'];
    size = json['size'];
    defaultBranch = json['default_branch'];
    openIssuesCount = json['open_issues_count'];
    isTemplate = json['is_template'];
    topics = List.castFrom<dynamic, String>(json['topics']);
    hasIssues = json['has_issues'];
    hasProjects = json['has_projects'];
    hasWiki = json['has_wiki'];
    hasPages = json['has_pages'];
    hasDownloads = json['has_downloads'];
    hasDiscussions = json['has_discussions'];
    archived = json['archived'];
    disabled = json['disabled'];
    visibility = json['visibility'];
    pushedAt = json['pushed_at'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
    permissions = Permissions.fromJson(json['permissions']);
    securityAndAnalysis =
        SecurityAndAnalysis.fromJson(json['security_and_analysis']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['node_id'] = nodeId;
    _data['name'] = name;
    _data['full_name'] = fullName;
    _data['owner'] = owner.toJson();
    _data['private'] = private;
    _data['html_url'] = htmlUrl;
    _data['description'] = description;
    _data['fork'] = fork;
    _data['url'] = url;
    _data['archive_url'] = archiveUrl;
    _data['assignees_url'] = assigneesUrl;
    _data['blobs_url'] = blobsUrl;
    _data['branches_url'] = branchesUrl;
    _data['collaborators_url'] = collaboratorsUrl;
    _data['comments_url'] = commentsUrl;
    _data['commits_url'] = commitsUrl;
    _data['compare_url'] = compareUrl;
    _data['contents_url'] = contentsUrl;
    _data['contributors_url'] = contributorsUrl;
    _data['deployments_url'] = deploymentsUrl;
    _data['downloads_url'] = downloadsUrl;
    _data['events_url'] = eventsUrl;
    _data['forks_url'] = forksUrl;
    _data['git_commits_url'] = gitCommitsUrl;
    _data['git_refs_url'] = gitRefsUrl;
    _data['git_tags_url'] = gitTagsUrl;
    _data['git_url'] = gitUrl;
    _data['issue_comment_url'] = issueCommentUrl;
    _data['issue_events_url'] = issueEventsUrl;
    _data['issues_url'] = issuesUrl;
    _data['keys_url'] = keysUrl;
    _data['labels_url'] = labelsUrl;
    _data['languages_url'] = languagesUrl;
    _data['merges_url'] = mergesUrl;
    _data['milestones_url'] = milestonesUrl;
    _data['notifications_url'] = notificationsUrl;
    _data['pulls_url'] = pullsUrl;
    _data['releases_url'] = releasesUrl;
    _data['ssh_url'] = sshUrl;
    _data['stargazers_url'] = stargazersUrl;
    _data['statuses_url'] = statusesUrl;
    _data['subscribers_url'] = subscribersUrl;
    _data['subscription_url'] = subscriptionUrl;
    _data['tags_url'] = tagsUrl;
    _data['teams_url'] = teamsUrl;
    _data['trees_url'] = treesUrl;
    _data['clone_url'] = cloneUrl;
    _data['mirror_url'] = mirrorUrl;
    _data['hooks_url'] = hooksUrl;
    _data['svn_url'] = svnUrl;
    _data['homepage'] = homepage;
    _data['language'] = language;
    _data['forks_count'] = forksCount;
    _data['stargazers_count'] = stargazersCount;
    _data['watchers_count'] = watchersCount;
    _data['size'] = size;
    _data['default_branch'] = defaultBranch;
    _data['open_issues_count'] = openIssuesCount;
    _data['is_template'] = isTemplate;
    _data['topics'] = topics;
    _data['has_issues'] = hasIssues;
    _data['has_projects'] = hasProjects;
    _data['has_wiki'] = hasWiki;
    _data['has_pages'] = hasPages;
    _data['has_downloads'] = hasDownloads;
    _data['has_discussions'] = hasDiscussions;
    _data['archived'] = archived;
    _data['disabled'] = disabled;
    _data['visibility'] = visibility;
    _data['pushed_at'] = pushedAt;
    _data['created_at'] = createdAt;
    _data['updated_at'] = updatedAt;
    _data['permissions'] = permissions.toJson();
    _data['security_and_analysis'] = securityAndAnalysis.toJson();
    return _data;
  }
}

class Owner {
  Owner({
    required this.login,
    required this.id,
    required this.nodeId,
    required this.avatarUrl,
    required this.gravatarId,
    required this.url,
    required this.htmlUrl,
    required this.followersUrl,
    required this.followingUrl,
    required this.gistsUrl,
    required this.starredUrl,
    required this.subscriptionsUrl,
    required this.organizationsUrl,
    required this.reposUrl,
    required this.eventsUrl,
    required this.receivedEventsUrl,
    required this.type,
    required this.siteAdmin,
  });
  late final String login;
  late final int id;
  late final String nodeId;
  late final String avatarUrl;
  late final String gravatarId;
  late final String url;
  late final String htmlUrl;
  late final String followersUrl;
  late final String followingUrl;
  late final String gistsUrl;
  late final String starredUrl;
  late final String subscriptionsUrl;
  late final String organizationsUrl;
  late final String reposUrl;
  late final String eventsUrl;
  late final String receivedEventsUrl;
  late final String type;
  late final bool siteAdmin;

  Owner.fromJson(Map<String, dynamic> json) {
    login = json['login'];
    id = json['id'];
    nodeId = json['node_id'];
    avatarUrl = json['avatar_url'];
    gravatarId = json['gravatar_id'];
    url = json['url'];
    htmlUrl = json['html_url'];
    followersUrl = json['followers_url'];
    followingUrl = json['following_url'];
    gistsUrl = json['gists_url'];
    starredUrl = json['starred_url'];
    subscriptionsUrl = json['subscriptions_url'];
    organizationsUrl = json['organizations_url'];
    reposUrl = json['repos_url'];
    eventsUrl = json['events_url'];
    receivedEventsUrl = json['received_events_url'];
    type = json['type'];
    siteAdmin = json['site_admin'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['login'] = login;
    _data['id'] = id;
    _data['node_id'] = nodeId;
    _data['avatar_url'] = avatarUrl;
    _data['gravatar_id'] = gravatarId;
    _data['url'] = url;
    _data['html_url'] = htmlUrl;
    _data['followers_url'] = followersUrl;
    _data['following_url'] = followingUrl;
    _data['gists_url'] = gistsUrl;
    _data['starred_url'] = starredUrl;
    _data['subscriptions_url'] = subscriptionsUrl;
    _data['organizations_url'] = organizationsUrl;
    _data['repos_url'] = reposUrl;
    _data['events_url'] = eventsUrl;
    _data['received_events_url'] = receivedEventsUrl;
    _data['type'] = type;
    _data['site_admin'] = siteAdmin;
    return _data;
  }
}

class Permissions {
  Permissions({
    required this.admin,
    required this.push,
    required this.pull,
  });
  late final bool admin;
  late final bool push;
  late final bool pull;

  Permissions.fromJson(Map<String, dynamic> json) {
    admin = json['admin'];
    push = json['push'];
    pull = json['pull'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['admin'] = admin;
    _data['push'] = push;
    _data['pull'] = pull;
    return _data;
  }
}

class SecurityAndAnalysis {
  SecurityAndAnalysis({
    required this.advancedSecurity,
    required this.secretScanning,
    required this.secretScanningPushProtection,
  });
  late final AdvancedSecurity advancedSecurity;
  late final SecretScanning secretScanning;
  late final SecretScanningPushProtection secretScanningPushProtection;

  SecurityAndAnalysis.fromJson(Map<String, dynamic> json) {
    advancedSecurity = AdvancedSecurity.fromJson(json['advanced_security']);
    secretScanning = SecretScanning.fromJson(json['secret_scanning']);
    secretScanningPushProtection = SecretScanningPushProtection.fromJson(
        json['secret_scanning_push_protection']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['advanced_security'] = advancedSecurity.toJson();
    _data['secret_scanning'] = secretScanning.toJson();
    _data['secret_scanning_push_protection'] =
        secretScanningPushProtection.toJson();
    return _data;
  }
}

class AdvancedSecurity {
  AdvancedSecurity({
    required this.status,
  });
  late final String status;

  AdvancedSecurity.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    return _data;
  }
}

class SecretScanning {
  SecretScanning({
    required this.status,
  });
  late final String status;

  SecretScanning.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    return _data;
  }
}

class SecretScanningPushProtection {
  SecretScanningPushProtection({
    required this.status,
  });
  late final String status;

  SecretScanningPushProtection.fromJson(Map<String, dynamic> json) {
    status = json['status'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['status'] = status;
    return _data;
  }
}
