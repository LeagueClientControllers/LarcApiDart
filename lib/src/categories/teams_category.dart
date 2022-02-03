import 'package:lcc_api_dart/src/i_lcc_api.dart';
import 'package:lcc_api_dart/src/categories/abstraction/i_teams_category.dart';
import 'package:lcc_api_dart/src/model/teams/team.dart';
import 'package:lcc_api_dart/src/model/general/enums/role.dart';

/// Contains methods of the /team/ API category. 
class TeamsCategory implements ITeamsCategory
{
	ILccApi _api;
	TeamsCategory(this._api);

	@override
	Future<int> createTeam(String teamName) async {
		throw UnimplementedError();
	}

	@override
	Future<List<Team>> getTeams() async {
		throw UnimplementedError();
	}

	@override
	Future changeTeamName(int teamId, String teamName) async {
		throw UnimplementedError();
	}

	@override
	Future deleteTeam(int teamId) async {
		throw UnimplementedError();
	}

	@override
	Future<int> addTeamMember(int teamId, String memberSummonerId, Role memberRole) async {
		throw UnimplementedError();
	}

	@override
	Future deleteTeamMember(int teamId, int memberId) async {
		throw UnimplementedError();
	}

	@override
	Future changeMemberRole(int teamId, int memberId, Role role) async {
		throw UnimplementedError();
	}

	@override
	Future changeTeamLeader(int teamId, int newLeaderId) async {
		throw UnimplementedError();
	}
}
